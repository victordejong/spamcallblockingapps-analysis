package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.databind.node.ContainerNode;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/node/ContainerNode.class */
public abstract class ContainerNode<T extends ContainerNode<T>> extends BaseJsonNode implements JsonNodeCreator {
    public final JsonNodeFactory _nodeFactory;

    public ContainerNode(JsonNodeFactory jsonNodeFactory) {
        this._nodeFactory = jsonNodeFactory;
    }

    public final NullNode nullNode() {
        return this._nodeFactory.nullNode();
    }
}
