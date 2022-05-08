package com.mikepenz.fastadapter;

import android.support.p004v7.widget.RecyclerView;
import android.support.p004v7.widget.RecyclerView.ViewHolder;
import com.mikepenz.fastadapter.IModelItem;
/* loaded from: classes-dex2jar.jar:com/mikepenz/fastadapter/IModelItem.class */
public interface IModelItem<Model, Item extends IModelItem<?, ?, ?>, VH extends RecyclerView.ViewHolder> extends IItem<Item, VH> {
    Model getModel();

    IModelItem<?, ?, ?> withModel(Model model);
}
