<section class="content-header">
    <h1><?= $title ?></h1>
    <ol class="breadcrumb">
        <li><a href="<?= site_url('dashboard') ?>"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active"><?= $title ?></li>
    </ol>
</section>

<section class="content-header">
    <?php $this->load->view('alert'); ?>
</section>
<!-- Main content -->
<section class="content">
  <div class="row">
    <div class="col-md-12">
      <div class="box">
        <div class="box-header with-border33">
          <h3 class="box-title">Course Lists</h3>
          <a href="<?= admin_url('course/add_course') ?>" class="pull-right btn btn-primary"><i class="fa fa-plus"></i> Add New</a>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
          <table class="table">
            <tr>
              <th>Sl No.</th>
              <th>Image</th>
              <th>Title</th>
              <th>Description</th>
              <th>Price</th>
              <th>Status</th>
              <th>Module</th>
              <th>Course Material</th>
              <th>Action</th>
            </tr>
            <?php
            if (is_array($course) && count($course) > 0) {
              $i = 0;
              foreach ($course as $course_v) {
                $i++;
                if (@$course_v->image && file_exists('./assets/images/courses/' . @$course_v->image)) {
                  $image = base_url('assets/images/courses/' . @$course_v->image);
                } else {
                  $image = base_url('assets/images/no-image.png');
                }
                // $catt=$this->db->get_where('cr_category',array('id'=>$course_v->cat_id))->row();
            ?>
                <tr>
                  <td><?= $i ?></td>
                  <td><img src="<?= @$image ?>" title="<?= $course_v->title ?>" style="width:60px; border:1px solid #ccc; padding:2px;"></td>
                  <td>
                    <div class="truncate"><?php if (@$course_v->title) {
                                            echo @$course_v->title;
                                          } else {
                                            echo "&#8212;";
                                          } ?></div>
                  </td>
                  <td>
                    <div class="truncate"><?= strip_tags($course_v->description) ?></div>
                  </td>
                  <td>
                    <?php if(@$course_v->course_type == 'free') {
                        echo "Free";
                    } else {
                        echo '$'.number_format($course_v->price, 2);
                    }
                    ?>
                    </td>
                  <td style="vertical-align: middle;">
                    <div class="checkbox checbox-switch switch-success">
                      <label>
                        <input type="checkbox" value="<?= @$course_v->status ?>" <?= (@$course_v->status == 1) ? 'checked="checked"' : ''; ?> onchange="changeCourseStatus(<?= @$course_v->id ?>, $(this))">
                        <span></span>
                      </label>
                    </div>
                  </td>
                  <td>
                    <a href="<?= admin_url('course/add_module/' . $course_v->id) ?>" class="btn btn-xs btn-info"><span class="fa fa-plus"></span> Add </a>
                    <a href="<?= admin_url('course/module_list/' . $course_v->id) ?>" class="btn btn-xs btn-info"><span class="fa fa-eye"></span> View </a>
                  </td>

                  <td>
                    <div class="action-button">
                      <a href="<?= admin_url('course/add_materials/' . $course_v->id) ?>" class="btn btn-xs btn-info"><span class="fa fa-plus"></span> Add </a>
                      <a href="<?= admin_url('course/material_list/' . $course_v->id) ?>" class="btn btn-xs btn-info"><span class="fa fa-eye"></span> View </a>
                    </div>
                  </td>

                  <td>

                    <div class="action-button">
                      <a href="<?= admin_url('course/add_course/' . $course_v->id) ?>" class="btn btn-xs btn-warning"><span class="fa fa-pencil"></span></a>
                      <button class="btn btn-xs btn-danger" style="margin-left: 5px;" title="Delete" data-toggle="tooltip" onclick="deleteCourse(<?= @$course_v->id ?>)">
                        <i class="fa fa-trash"></i>
                      </button>
                    </div>
                  </td>
                  <td>
                  <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" id="assign_course_<?=$course_v->id?>">Assign Course</button>
                  <input type="hidden" id="courseID_<?=$course_v->id?>" value="<?=$course_v->id?>"/>
                  </td>
                </tr>
                <div class="modal fade" id="exampleModal_<?=$course_v->id?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Member Lists</h5>
                                <button type="button" class="btn-close modal-close" data-bs-dismiss="modal" aria-label="Close">X</button>
                            </div>
                            <?php 
                            $checkAssignedCourseToUser = $this->db->query("SELECT GROUP_CONCAT(user_id) as user_id FROM course_enrollment where course_enrollment.course_id = $course_v->id")->result_array();
                            $userList = $checkAssignedCourseToUser[0]['user_id'];
                            if(!empty($userList)) {
                                $getMemberList = $this->db->query("SELECT id, fname, lname FROM users where id NOT IN ($userList) AND email_verified = 1 AND status = 1")->result_array();
                            } else {
                                $getMemberList = $this->db->query("SELECT id, fname, lname FROM users where email_verified = 1 AND status = 1")->result_array();
                            }
                            if(!empty($getMemberList)) { ?>
                            <div class="modal-body">
                                <select name="member-list" id="member-list_<?=$course_v->id?>" multiple style="width: 100%">
                                <?php foreach($getMemberList as $value) { ?>
                                    <option value="<?= $value['id']?>"><?= $value['fname']." ".$value['lname']?></option>
                                <?php } ?>
                                </select>
                            </div>
                            <div class="modal-footer">
                                <p class="btn btn-primary assign_member_<?=$course_v->id?>">Assign</p>
                                <input type="hidden" id="assigncourseID_<?=$course_v->id?>" value=""/>
                            </div>
                            <div class="sussess_message" style="padding: 10px 0 10px 0; text-align: center; color: #1a6d2d; display: none;">Successfully Assigned</div>
                            <?php } else { ?>
                                <div class="modal-body">All users are assigned to this course</div>
                            <?php } ?>
                        </div>
                    </div>
                </div>
            <?php
              }
            }
            ?>
          </table>
        </div>
        <!-- /.box-body -->
        <div class="box-footer clearfix">
          <?= $paginate ?>
        </div>
      </div>
      <!-- /.box -->
    </div>
  </div>
<style>
    .modal-title {width: 90%; display: inline-block;}
    .modal-close {background: none; border: none; float: right;}
</style>
<script>
    function deleteCourse(id) {
        swal({
            title: 'Are You sure want to delete this course?',
            type: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#36A1EA',
            cancelButtonColor: '#e50914',
            confirmButtonText: 'Yes',
            cancelButtonText: 'No',
            closeOnConfirm: true,
            closeOnCancel: true
        }, function(isConfirm) {
            if (isConfirm) {
                window.location.href = '<?= admin_url('course/deleteCourse/') ?>' + id
            }
        });
    }

    <?php foreach ($course as $course_v) { ?>
    $('#assign_course_<?=$course_v->id?>').click(function(){
        var courseID = $('#courseID_<?=$course_v->id?>').val();
        $('#exampleModal_<?=$course_v->id?>').show();
        $('.modal').css('opacity','1');
        $('.modal-dialog').css('width','300px');
        $('.modal-dialog').css('top','30%');
        $('#assigncourseID_<?=$course_v->id?>').val(courseID);
    })
    $('.modal-close').click(function(){
        $('.modal').css('opacity','0');
        $('.modal-dialog').css('top','30%');
        $('.modal').hide();
    })

    $('.assign_member_<?=$course_v->id?>').click(function() {
        var member = $('#member-list_<?=$course_v->id?>').val();
        var assigncourseID = $('#assigncourseID_<?=$course_v->id?>').val();
        var baseUrl = "<?= base_url(); ?>";
        $.ajax({
            type:"post",
            cache:false,
            url:baseUrl+"admin/Course/purchaseCourse",
            data:{member:member, assigncourseID: assigncourseID},
            beforeSend:function(){},
            success:function(returndata) {
                //console.log(returndata); return false;
                $('.sussess_message').show();
                setTimeout(() => {
                    location.reload();
                }, 2000);
            }
        });
    })
    <?php } ?>
</script>