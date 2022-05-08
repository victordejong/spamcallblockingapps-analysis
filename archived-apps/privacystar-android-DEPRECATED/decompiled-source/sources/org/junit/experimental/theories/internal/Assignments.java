package org.junit.experimental.theories.internal;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.junit.experimental.theories.ParameterSignature;
import org.junit.experimental.theories.ParameterSupplier;
import org.junit.experimental.theories.ParametersSuppliedBy;
import org.junit.experimental.theories.PotentialAssignment;
import org.junit.runners.model.TestClass;
/* loaded from: classes2-dex2jar.jar:org/junit/experimental/theories/internal/Assignments.class */
public class Assignments {
    private final List<PotentialAssignment> assigned;
    private final TestClass clazz;
    private final List<ParameterSignature> unassigned;

    private Assignments(List<PotentialAssignment> list, List<ParameterSignature> list2, TestClass testClass) {
        this.unassigned = list2;
        this.assigned = list;
        this.clazz = testClass;
    }

    public static Assignments allUnassigned(Method method, TestClass testClass) {
        List<ParameterSignature> signatures = ParameterSignature.signatures(testClass.getOnlyConstructor());
        signatures.addAll(ParameterSignature.signatures(method));
        return new Assignments(new ArrayList(), signatures, testClass);
    }

    private ParameterSupplier buildParameterSupplierFromClass(Class<? extends ParameterSupplier> cls) throws Exception {
        Constructor<?>[] constructors;
        for (Constructor<?> constructor : cls.getConstructors()) {
            Class<?>[] parameterTypes = constructor.getParameterTypes();
            if (parameterTypes.length == 1 && parameterTypes[0].equals(TestClass.class)) {
                return (ParameterSupplier) constructor.newInstance(this.clazz);
            }
        }
        return (ParameterSupplier) cls.newInstance();
    }

    private List<PotentialAssignment> generateAssignmentsFromTypeAlone(ParameterSignature parameterSignature) {
        Class<?> type = parameterSignature.getType();
        return type.isEnum() ? new EnumSupplier(type).getValueSources(parameterSignature) : (type.equals(Boolean.class) || type.equals(Boolean.TYPE)) ? new BooleanSupplier().getValueSources(parameterSignature) : Collections.emptyList();
    }

    private int getConstructorParameterCount() {
        return ParameterSignature.signatures(this.clazz.getOnlyConstructor()).size();
    }

    private ParameterSupplier getSupplier(ParameterSignature parameterSignature) throws Exception {
        ParametersSuppliedBy parametersSuppliedBy = (ParametersSuppliedBy) parameterSignature.findDeepAnnotation(ParametersSuppliedBy.class);
        return parametersSuppliedBy != null ? buildParameterSupplierFromClass(parametersSuppliedBy.value()) : new AllMembersSupplier(this.clazz);
    }

    public Assignments assignNext(PotentialAssignment potentialAssignment) {
        ArrayList arrayList = new ArrayList(this.assigned);
        arrayList.add(potentialAssignment);
        return new Assignments(arrayList, this.unassigned.subList(1, this.unassigned.size()), this.clazz);
    }

    public Object[] getActualValues(int i, int i2) throws PotentialAssignment.CouldNotGenerateValueException {
        Object[] objArr = new Object[i2 - i];
        for (int i3 = i; i3 < i2; i3++) {
            objArr[i3 - i] = this.assigned.get(i3).getValue();
        }
        return objArr;
    }

    public Object[] getAllArguments() throws PotentialAssignment.CouldNotGenerateValueException {
        return getActualValues(0, this.assigned.size());
    }

    public Object[] getArgumentStrings(boolean z) throws PotentialAssignment.CouldNotGenerateValueException {
        Object[] objArr = new Object[this.assigned.size()];
        for (int i = 0; i < objArr.length; i++) {
            objArr[i] = this.assigned.get(i).getDescription();
        }
        return objArr;
    }

    public Object[] getConstructorArguments() throws PotentialAssignment.CouldNotGenerateValueException {
        return getActualValues(0, getConstructorParameterCount());
    }

    public Object[] getMethodArguments() throws PotentialAssignment.CouldNotGenerateValueException {
        return getActualValues(getConstructorParameterCount(), this.assigned.size());
    }

    public boolean isComplete() {
        return this.unassigned.size() == 0;
    }

    public ParameterSignature nextUnassigned() {
        return this.unassigned.get(0);
    }

    public List<PotentialAssignment> potentialsForNextUnassigned() throws Throwable {
        ParameterSignature nextUnassigned = nextUnassigned();
        List<PotentialAssignment> valueSources = getSupplier(nextUnassigned).getValueSources(nextUnassigned);
        List<PotentialAssignment> list = valueSources;
        if (valueSources.size() == 0) {
            list = generateAssignmentsFromTypeAlone(nextUnassigned);
        }
        return list;
    }
}
