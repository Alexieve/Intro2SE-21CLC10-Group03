var contextMenu = document.querySelector('.contextMenu');

function showcontextMenu(x, y){
    contextMenu.style.left = x + 'px';
    contextMenu.style.top = y + 'px';
    contextMenu.classList.add('contextMenu-show');
}

function hidecontextMenu(){
    contextMenu.classList.remove('contextMenu-show');
}

function onContextMenu(e){
    console.log(e)
    e.preventDefault();
    showcontextMenu(e.pageX, e.pageY);
    document.addEventListener('mousedown', onMouseDown, false);
}

function onMouseDown(e){
    hidecontextMenu();
    document.removeEventListener('mousedown', onMouseDown);
}

document.addEventListener('contextmenu', onContextMenu, false);