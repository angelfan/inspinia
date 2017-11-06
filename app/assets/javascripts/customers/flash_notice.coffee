@FlashNotice =
  render: (result) ->
    console.log result
    if result['status'] == 'ok'
      toastr.success(result['msg'], '操作成功')
    else
      toastr.error(result['err_msg'], '操作失败')

  success: (desc, title) ->
    toastr.success(desc, title)

  info: (desc, title) ->
    toastr.info(desc, title)

  warning: (desc, title) ->
    toastr.warning(desc, title)

  error: (desc, title) ->
    toastr.error(desc, title)

