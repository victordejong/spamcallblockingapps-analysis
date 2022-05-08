package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.databind.introspect.VisibilityChecker;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/introspect/VisibilityChecker.class */
public interface VisibilityChecker<T extends VisibilityChecker<T>> {

    @JsonAutoDetect(creatorVisibility = JsonAutoDetect.Visibility.ANY, fieldVisibility = JsonAutoDetect.Visibility.PUBLIC_ONLY, getterVisibility = JsonAutoDetect.Visibility.PUBLIC_ONLY, isGetterVisibility = JsonAutoDetect.Visibility.PUBLIC_ONLY, setterVisibility = JsonAutoDetect.Visibility.ANY)
    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/introspect/VisibilityChecker$Std.class */
    public static class Std implements VisibilityChecker<Std>, Serializable {
        public static final Std DEFAULT = new Std((JsonAutoDetect) Std.class.getAnnotation(JsonAutoDetect.class));
        public final JsonAutoDetect.Visibility _creatorMinLevel;
        public final JsonAutoDetect.Visibility _fieldMinLevel;
        public final JsonAutoDetect.Visibility _getterMinLevel;
        public final JsonAutoDetect.Visibility _isGetterMinLevel;
        public final JsonAutoDetect.Visibility _setterMinLevel;

        public Std(JsonAutoDetect.Visibility visibility, JsonAutoDetect.Visibility visibility2, JsonAutoDetect.Visibility visibility3, JsonAutoDetect.Visibility visibility4, JsonAutoDetect.Visibility visibility5) {
            this._getterMinLevel = visibility;
            this._isGetterMinLevel = visibility2;
            this._setterMinLevel = visibility3;
            this._creatorMinLevel = visibility4;
            this._fieldMinLevel = visibility5;
        }

        public Std(JsonAutoDetect jsonAutoDetect) {
            this._getterMinLevel = jsonAutoDetect.getterVisibility();
            this._isGetterMinLevel = jsonAutoDetect.isGetterVisibility();
            this._setterMinLevel = jsonAutoDetect.setterVisibility();
            this._creatorMinLevel = jsonAutoDetect.creatorVisibility();
            this._fieldMinLevel = jsonAutoDetect.fieldVisibility();
        }

        public static Std defaultInstance() {
            return DEFAULT;
        }

        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public boolean isCreatorVisible(AnnotatedMember annotatedMember) {
            return isCreatorVisible(annotatedMember.getMember());
        }

        public boolean isCreatorVisible(Member member) {
            return this._creatorMinLevel.isVisible(member);
        }

        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public boolean isFieldVisible(AnnotatedField annotatedField) {
            return isFieldVisible(annotatedField.getAnnotated());
        }

        public boolean isFieldVisible(Field field) {
            return this._fieldMinLevel.isVisible(field);
        }

        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public boolean isGetterVisible(AnnotatedMethod annotatedMethod) {
            return isGetterVisible(annotatedMethod.getAnnotated());
        }

        public boolean isGetterVisible(Method method) {
            return this._getterMinLevel.isVisible(method);
        }

        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public boolean isIsGetterVisible(AnnotatedMethod annotatedMethod) {
            return isIsGetterVisible(annotatedMethod.getAnnotated());
        }

        public boolean isIsGetterVisible(Method method) {
            return this._isGetterMinLevel.isVisible(method);
        }

        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public boolean isSetterVisible(AnnotatedMethod annotatedMethod) {
            return isSetterVisible(annotatedMethod.getAnnotated());
        }

        public boolean isSetterVisible(Method method) {
            return this._setterMinLevel.isVisible(method);
        }

        public String toString() {
            return "[Visibility: getter: " + this._getterMinLevel + ", isGetter: " + this._isGetterMinLevel + ", setter: " + this._setterMinLevel + ", creator: " + this._creatorMinLevel + ", field: " + this._fieldMinLevel + "]";
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public Std with(JsonAutoDetect jsonAutoDetect) {
            return jsonAutoDetect != null ? withGetterVisibility(jsonAutoDetect.getterVisibility()).withIsGetterVisibility(jsonAutoDetect.isGetterVisibility()).withSetterVisibility(jsonAutoDetect.setterVisibility()).withCreatorVisibility(jsonAutoDetect.creatorVisibility()).withFieldVisibility(jsonAutoDetect.fieldVisibility()) : this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public Std withCreatorVisibility(JsonAutoDetect.Visibility visibility) {
            JsonAutoDetect.Visibility visibility2 = visibility;
            if (visibility == JsonAutoDetect.Visibility.DEFAULT) {
                visibility2 = DEFAULT._creatorMinLevel;
            }
            return this._creatorMinLevel == visibility2 ? this : new Std(this._getterMinLevel, this._isGetterMinLevel, this._setterMinLevel, visibility2, this._fieldMinLevel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public Std withFieldVisibility(JsonAutoDetect.Visibility visibility) {
            JsonAutoDetect.Visibility visibility2 = visibility;
            if (visibility == JsonAutoDetect.Visibility.DEFAULT) {
                visibility2 = DEFAULT._fieldMinLevel;
            }
            return this._fieldMinLevel == visibility2 ? this : new Std(this._getterMinLevel, this._isGetterMinLevel, this._setterMinLevel, this._creatorMinLevel, visibility2);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public Std withGetterVisibility(JsonAutoDetect.Visibility visibility) {
            JsonAutoDetect.Visibility visibility2 = visibility;
            if (visibility == JsonAutoDetect.Visibility.DEFAULT) {
                visibility2 = DEFAULT._getterMinLevel;
            }
            return this._getterMinLevel == visibility2 ? this : new Std(visibility2, this._isGetterMinLevel, this._setterMinLevel, this._creatorMinLevel, this._fieldMinLevel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public Std withIsGetterVisibility(JsonAutoDetect.Visibility visibility) {
            JsonAutoDetect.Visibility visibility2 = visibility;
            if (visibility == JsonAutoDetect.Visibility.DEFAULT) {
                visibility2 = DEFAULT._isGetterMinLevel;
            }
            return this._isGetterMinLevel == visibility2 ? this : new Std(this._getterMinLevel, visibility2, this._setterMinLevel, this._creatorMinLevel, this._fieldMinLevel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public Std withSetterVisibility(JsonAutoDetect.Visibility visibility) {
            JsonAutoDetect.Visibility visibility2 = visibility;
            if (visibility == JsonAutoDetect.Visibility.DEFAULT) {
                visibility2 = DEFAULT._setterMinLevel;
            }
            return this._setterMinLevel == visibility2 ? this : new Std(this._getterMinLevel, this._isGetterMinLevel, visibility2, this._creatorMinLevel, this._fieldMinLevel);
        }
    }

    boolean isCreatorVisible(AnnotatedMember annotatedMember);

    boolean isFieldVisible(AnnotatedField annotatedField);

    boolean isGetterVisible(AnnotatedMethod annotatedMethod);

    boolean isIsGetterVisible(AnnotatedMethod annotatedMethod);

    boolean isSetterVisible(AnnotatedMethod annotatedMethod);

    T with(JsonAutoDetect jsonAutoDetect);

    T withCreatorVisibility(JsonAutoDetect.Visibility visibility);

    T withFieldVisibility(JsonAutoDetect.Visibility visibility);

    T withGetterVisibility(JsonAutoDetect.Visibility visibility);

    T withIsGetterVisibility(JsonAutoDetect.Visibility visibility);

    T withSetterVisibility(JsonAutoDetect.Visibility visibility);
}
