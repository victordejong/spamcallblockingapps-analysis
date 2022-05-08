package android.support.constraint.solver.widgets;

import android.support.constraint.solver.LinearSystem;
import android.support.constraint.solver.widgets.ConstraintAnchor;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:android/support/constraint/solver/widgets/Guideline.class */
public class Guideline extends ConstraintWidget {
    public static final int HORIZONTAL = 0;
    public static final int RELATIVE_BEGIN = 1;
    public static final int RELATIVE_END = 2;
    public static final int RELATIVE_PERCENT = 0;
    public static final int RELATIVE_UNKNWON = -1;
    public static final int VERTICAL = 1;
    protected float mRelativePercent = -1.0f;
    protected int mRelativeBegin = -1;
    protected int mRelativeEnd = -1;
    private ConstraintAnchor mAnchor = this.mTop;
    private int mOrientation = 0;
    private boolean mIsPositionRelaxed = false;
    private int mMinimumPosition = 0;
    private Rectangle mHead = new Rectangle();
    private int mHeadSize = 8;

    /* renamed from: android.support.constraint.solver.widgets.Guideline$1 */
    /* loaded from: classes-dex2jar.jar:android/support/constraint/solver/widgets/Guideline$1.class */
    static /* synthetic */ class C00631 {

        /* renamed from: $SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type */
        static final /* synthetic */ int[] f9x1d400623 = new int[ConstraintAnchor.Type.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            try {
                f9x1d400623[ConstraintAnchor.Type.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f9x1d400623[ConstraintAnchor.Type.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f9x1d400623[ConstraintAnchor.Type.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f9x1d400623[ConstraintAnchor.Type.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public Guideline() {
        this.mAnchors.clear();
        this.mAnchors.add(this.mAnchor);
    }

    @Override // android.support.constraint.solver.widgets.ConstraintWidget
    public void addToSolver(LinearSystem linearSystem, int i) {
        ConstraintWidgetContainer constraintWidgetContainer = (ConstraintWidgetContainer) getParent();
        if (constraintWidgetContainer != null) {
            ConstraintAnchor anchor = constraintWidgetContainer.getAnchor(ConstraintAnchor.Type.LEFT);
            ConstraintAnchor anchor2 = constraintWidgetContainer.getAnchor(ConstraintAnchor.Type.RIGHT);
            if (this.mOrientation == 0) {
                anchor = constraintWidgetContainer.getAnchor(ConstraintAnchor.Type.TOP);
                anchor2 = constraintWidgetContainer.getAnchor(ConstraintAnchor.Type.BOTTOM);
            }
            if (this.mRelativeBegin != -1) {
                linearSystem.addConstraint(LinearSystem.createRowEquals(linearSystem, linearSystem.createObjectVariable(this.mAnchor), linearSystem.createObjectVariable(anchor), this.mRelativeBegin, false));
            } else if (this.mRelativeEnd != -1) {
                linearSystem.addConstraint(LinearSystem.createRowEquals(linearSystem, linearSystem.createObjectVariable(this.mAnchor), linearSystem.createObjectVariable(anchor2), -this.mRelativeEnd, false));
            } else if (this.mRelativePercent != -1.0f) {
                linearSystem.addConstraint(LinearSystem.createRowDimensionPercent(linearSystem, linearSystem.createObjectVariable(this.mAnchor), linearSystem.createObjectVariable(anchor), linearSystem.createObjectVariable(anchor2), this.mRelativePercent, this.mIsPositionRelaxed));
            }
        }
    }

    public void cyclePosition() {
        if (this.mRelativeBegin != -1) {
            inferRelativePercentPosition();
        } else if (this.mRelativePercent != -1.0f) {
            inferRelativeEndPosition();
        } else if (this.mRelativeEnd != -1) {
            inferRelativeBeginPosition();
        }
    }

    public ConstraintAnchor getAnchor() {
        return this.mAnchor;
    }

    @Override // android.support.constraint.solver.widgets.ConstraintWidget
    public ConstraintAnchor getAnchor(ConstraintAnchor.Type type) {
        switch (C00631.f9x1d400623[type.ordinal()]) {
            case 1:
            case 2:
                if (this.mOrientation == 1) {
                    return this.mAnchor;
                }
                return null;
            case 3:
            case 4:
                if (this.mOrientation == 0) {
                    return this.mAnchor;
                }
                return null;
            default:
                return null;
        }
    }

    @Override // android.support.constraint.solver.widgets.ConstraintWidget
    public ArrayList<ConstraintAnchor> getAnchors() {
        return this.mAnchors;
    }

    public Rectangle getHead() {
        this.mHead.setBounds(getDrawX() - this.mHeadSize, getDrawY() - (this.mHeadSize * 2), this.mHeadSize * 2, this.mHeadSize * 2);
        if (getOrientation() == 0) {
            this.mHead.setBounds(getDrawX() - (this.mHeadSize * 2), getDrawY() - this.mHeadSize, this.mHeadSize * 2, this.mHeadSize * 2);
        }
        return this.mHead;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public int getRelativeBegin() {
        return this.mRelativeBegin;
    }

    public int getRelativeBehaviour() {
        if (this.mRelativePercent != -1.0f) {
            return 0;
        }
        if (this.mRelativeBegin != -1) {
            return 1;
        }
        return this.mRelativeEnd != -1 ? 2 : -1;
    }

    public int getRelativeEnd() {
        return this.mRelativeEnd;
    }

    public float getRelativePercent() {
        return this.mRelativePercent;
    }

    @Override // android.support.constraint.solver.widgets.ConstraintWidget
    public String getType() {
        return "Guideline";
    }

    void inferRelativeBeginPosition() {
        int x = getX();
        if (this.mOrientation == 0) {
            x = getY();
        }
        setGuideBegin(x);
    }

    void inferRelativeEndPosition() {
        int width = getParent().getWidth() - getX();
        if (this.mOrientation == 0) {
            width = getParent().getHeight() - getY();
        }
        setGuideEnd(width);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void inferRelativePercentPosition() {
        float x = getX() / getParent().getWidth();
        if (this.mOrientation == 0) {
            x = getY() / getParent().getHeight();
        }
        setGuidePercent(x);
    }

    @Override // android.support.constraint.solver.widgets.ConstraintWidget
    public void setDrawOrigin(int i, int i2) {
        if (this.mOrientation == 1) {
            int i3 = i - this.mOffsetX;
            if (this.mRelativeBegin != -1) {
                setGuideBegin(i3);
            } else if (this.mRelativeEnd != -1) {
                setGuideEnd(getParent().getWidth() - i3);
            } else if (this.mRelativePercent != -1.0f) {
                setGuidePercent(i3 / getParent().getWidth());
            }
        } else {
            int i4 = i2 - this.mOffsetY;
            if (this.mRelativeBegin != -1) {
                setGuideBegin(i4);
            } else if (this.mRelativeEnd != -1) {
                setGuideEnd(getParent().getHeight() - i4);
            } else if (this.mRelativePercent != -1.0f) {
                setGuidePercent(i4 / getParent().getHeight());
            }
        }
    }

    public void setGuideBegin(int i) {
        if (i > -1) {
            this.mRelativePercent = -1.0f;
            this.mRelativeBegin = i;
            this.mRelativeEnd = -1;
        }
    }

    public void setGuideEnd(int i) {
        if (i > -1) {
            this.mRelativePercent = -1.0f;
            this.mRelativeBegin = -1;
            this.mRelativeEnd = i;
        }
    }

    public void setGuidePercent(float f) {
        if (f > -1.0f) {
            this.mRelativePercent = f;
            this.mRelativeBegin = -1;
            this.mRelativeEnd = -1;
        }
    }

    public void setGuidePercent(int i) {
        setGuidePercent(i / 100.0f);
    }

    public void setMinimumPosition(int i) {
        this.mMinimumPosition = i;
    }

    public void setOrientation(int i) {
        if (this.mOrientation != i) {
            this.mOrientation = i;
            this.mAnchors.clear();
            if (this.mOrientation == 1) {
                this.mAnchor = this.mLeft;
            } else {
                this.mAnchor = this.mTop;
            }
            this.mAnchors.add(this.mAnchor);
        }
    }

    public void setPositionRelaxed(boolean z) {
        if (this.mIsPositionRelaxed != z) {
            this.mIsPositionRelaxed = z;
        }
    }

    @Override // android.support.constraint.solver.widgets.ConstraintWidget
    public void updateFromSolver(LinearSystem linearSystem, int i) {
        if (getParent() != null) {
            int objectVariableValue = linearSystem.getObjectVariableValue(this.mAnchor);
            if (this.mOrientation == 1) {
                setX(objectVariableValue);
                setY(0);
                setHeight(getParent().getHeight());
                setWidth(0);
                return;
            }
            setX(0);
            setY(objectVariableValue);
            setWidth(getParent().getWidth());
            setHeight(0);
        }
    }
}
