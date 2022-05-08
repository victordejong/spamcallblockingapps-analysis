package org.junit.experimental.categories;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.junit.experimental.categories.Categories;
import org.junit.runner.manipulation.Filter;
/* loaded from: classes2-dex2jar.jar:org/junit/experimental/categories/ExcludeCategories.class */
public final class ExcludeCategories extends CategoryFilterFactory {

    /* loaded from: classes2-dex2jar.jar:org/junit/experimental/categories/ExcludeCategories$ExcludesAny.class */
    private static class ExcludesAny extends Categories.CategoryFilter {
        public ExcludesAny(List<Class<?>> list) {
            this(new HashSet(list));
        }

        public ExcludesAny(Set<Class<?>> set) {
            super(true, null, true, set);
        }

        @Override // org.junit.experimental.categories.Categories.CategoryFilter, org.junit.runner.manipulation.Filter
        public String describe() {
            return "excludes " + super.describe();
        }
    }

    @Override // org.junit.experimental.categories.CategoryFilterFactory
    protected Filter createFilter(List<Class<?>> list) {
        return new ExcludesAny(list);
    }
}
