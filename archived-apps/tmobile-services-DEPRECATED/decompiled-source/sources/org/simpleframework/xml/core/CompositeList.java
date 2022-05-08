package org.simpleframework.xml.core;

import java.util.Collection;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/core/CompositeList.class */
public class CompositeList implements Converter {
    private final Type entry;
    private final CollectionFactory factory;
    private final String name;
    private final Traverser root;
    private final Type type;

    public CompositeList(Context context, Type type, Type type2, String str) {
        this.factory = new CollectionFactory(context, type);
        this.root = new Traverser(context);
        this.entry = type2;
        this.type = type;
        this.name = str;
    }

    private Object populate(InputNode inputNode, Object obj) throws Exception {
        Collection collection = (Collection) obj;
        while (true) {
            InputNode next = inputNode.getNext();
            Class type = this.entry.getType();
            if (next == null) {
                return collection;
            }
            collection.add(this.root.read(next, type));
        }
    }

    private boolean validate(InputNode inputNode, Class cls) throws Exception {
        while (true) {
            InputNode next = inputNode.getNext();
            Class type = this.entry.getType();
            if (next == null) {
                return true;
            }
            this.root.validate(next, type);
        }
    }

    @Override // org.simpleframework.xml.core.Converter
    public Object read(InputNode inputNode) throws Exception {
        Instance instance = this.factory.getInstance(inputNode);
        Object instance2 = instance.getInstance();
        return !instance.isReference() ? populate(inputNode, instance2) : instance2;
    }

    @Override // org.simpleframework.xml.core.Converter
    public Object read(InputNode inputNode, Object obj) throws Exception {
        Instance instance = this.factory.getInstance(inputNode);
        if (instance.isReference()) {
            return instance.getInstance();
        }
        instance.setInstance(obj);
        return obj != null ? populate(inputNode, obj) : obj;
    }

    @Override // org.simpleframework.xml.core.Converter
    public boolean validate(InputNode inputNode) throws Exception {
        Instance instance = this.factory.getInstance(inputNode);
        if (instance.isReference()) {
            return true;
        }
        instance.setInstance(null);
        return validate(inputNode, instance.getType());
    }

    @Override // org.simpleframework.xml.core.Converter
    public void write(OutputNode outputNode, Object obj) throws Exception {
        for (Object obj2 : (Collection) obj) {
            if (obj2 != null) {
                Class type = this.entry.getType();
                Class<?> cls = obj2.getClass();
                if (type.isAssignableFrom(cls)) {
                    this.root.write(outputNode, obj2, type, this.name);
                } else {
                    throw new PersistenceException("Entry %s does not match %s for %s", cls, this.entry, this.type);
                }
            }
        }
    }
}
