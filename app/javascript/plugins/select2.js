import 'select2';
const initSelect2 = () => {
  $('.select2').select2({
		placeholder: "Select a tool",
		allowClear: true
	});
};
export { initSelect2 };
