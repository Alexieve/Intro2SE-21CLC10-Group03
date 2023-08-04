const menuItems = [
  {
    content: `Thêm sách`,
    events: {
      click: (e) => console.log(e),
      // click: (e) => console.log(e, "Copy Button Click"),
      // You can use any event listener from here
    },
  },
  {
    content: `Thêm chương`,
    divider: "top-bottom", // top, bottom, top-bottom
    events: {
      click: (e) => console.log(e),
      // click: (e) => console.log(e, "Copy Button Click"),
      // You can use any event listener from here
    },
  },
  {
    content: `Thêm tập`,
    events: {
      click: (e) => console.log(e),
      // click: (e) => console.log(e, "Copy Button Click"),
      // You can use any event listener from here
    },
  },
];

const myMenu = new ContextMenu({
  target: ".target-light",
  mode: "light",
  menuItems,
});

myMenu.init();
