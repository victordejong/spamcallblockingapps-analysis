package android.support.v13.view;

import android.graphics.Point;
import android.support.p001v4.view.MotionEventCompat;
import android.view.MotionEvent;
import android.view.View;
/* loaded from: classes-dex2jar.jar:android/support/v13/view/DragStartHelper.class */
public class DragStartHelper {
    private boolean mDragging;
    private int mLastTouchX;
    private int mLastTouchY;
    private final OnDragStartListener mListener;
    private final View.OnLongClickListener mLongClickListener = new View.OnLongClickListener() { // from class: android.support.v13.view.DragStartHelper.1
        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            return DragStartHelper.this.onLongClick(view);
        }
    };
    private final View.OnTouchListener mTouchListener = new View.OnTouchListener() { // from class: android.support.v13.view.DragStartHelper.2
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return DragStartHelper.this.onTouch(view, motionEvent);
        }
    };
    private final View mView;

    /* loaded from: classes-dex2jar.jar:android/support/v13/view/DragStartHelper$OnDragStartListener.class */
    public interface OnDragStartListener {
        boolean onDragStart(View view, DragStartHelper dragStartHelper);
    }

    public DragStartHelper(View view, OnDragStartListener onDragStartListener) {
        this.mView = view;
        this.mListener = onDragStartListener;
    }

    public void attach() {
        this.mView.setOnLongClickListener(this.mLongClickListener);
        this.mView.setOnTouchListener(this.mTouchListener);
    }

    public void detach() {
        this.mView.setOnLongClickListener(null);
        this.mView.setOnTouchListener(null);
    }

    public void getTouchPosition(Point point) {
        point.set(this.mLastTouchX, this.mLastTouchY);
    }

    public boolean onLongClick(View view) {
        return this.mListener.onDragStart(view, this);
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        switch (motionEvent.getAction()) {
            case 0:
                this.mLastTouchX = x;
                this.mLastTouchY = y;
                return false;
            case 1:
            case 3:
                this.mDragging = false;
                return false;
            case 2:
                if (!MotionEventCompat.isFromSource(motionEvent, 8194) || (motionEvent.getButtonState() & 1) == 0 || this.mDragging) {
                    return false;
                }
                if (this.mLastTouchX == x && this.mLastTouchY == y) {
                    return false;
                }
                this.mLastTouchX = x;
                this.mLastTouchY = y;
                this.mDragging = this.mListener.onDragStart(view, this);
                return this.mDragging;
            default:
                return false;
        }
    }
}
