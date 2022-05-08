package android.support.design.animation;

import android.graphics.Matrix;
import android.util.Property;
import android.widget.ImageView;
/* loaded from: classes-dex2jar.jar:android/support/design/animation/ImageMatrixProperty.class */
public class ImageMatrixProperty extends Property<ImageView, Matrix> {
    private final Matrix matrix = new Matrix();

    public ImageMatrixProperty() {
        super(Matrix.class, "imageMatrixProperty");
    }

    public Matrix get(ImageView imageView) {
        this.matrix.set(imageView.getImageMatrix());
        return this.matrix;
    }

    public void set(ImageView imageView, Matrix matrix) {
        imageView.setImageMatrix(matrix);
    }
}
