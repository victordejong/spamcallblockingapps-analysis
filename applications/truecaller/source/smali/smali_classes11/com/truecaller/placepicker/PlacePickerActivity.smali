.class public final Lcom/truecaller/placepicker/PlacePickerActivity;
.super Le/a/k4/b;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;
.implements Le/a/k4/h;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0006\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008L\u0010\nJ\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nJ)\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0019\u0010\u0015\u001a\u00020\u00142\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0017\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u001bH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0019\u0010!\u001a\u00020\u00062\u0008\u0010 \u001a\u0004\u0018\u00010\u001fH\u0016\u00a2\u0006\u0004\u0008!\u0010\"J\u0017\u0010%\u001a\u00020\u00062\u0006\u0010$\u001a\u00020#H\u0016\u00a2\u0006\u0004\u0008%\u0010&J\u0017\u0010(\u001a\u00020\u00062\u0006\u0010\'\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008(\u0010)J\u000f\u0010*\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008*\u0010\nJ\u001f\u0010.\u001a\u00020\u00062\u0006\u0010,\u001a\u00020+2\u0006\u0010-\u001a\u00020+H\u0016\u00a2\u0006\u0004\u0008.\u0010/J\u000f\u00100\u001a\u00020\u0006H\u0017\u00a2\u0006\u0004\u00080\u0010\nJ\u0017\u00101\u001a\u00020\u00062\u0006\u0010\'\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u00081\u0010)J\u0017\u00104\u001a\u00020\u00062\u0006\u00103\u001a\u000202H\u0016\u00a2\u0006\u0004\u00084\u00105J\u000f\u00106\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u00086\u0010\nJ\u0017\u00108\u001a\u00020\u00062\u0006\u00107\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u00088\u00109J\u000f\u0010:\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008:\u0010\nJ\u000f\u0010;\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008;\u0010\nR\"\u0010C\u001a\u00020<8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008=\u0010>\u001a\u0004\u0008?\u0010@\"\u0004\u0008A\u0010BR\u001d\u0010I\u001a\u00020D8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008E\u0010F\u001a\u0004\u0008G\u0010HR\u0018\u0010K\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00083\u0010J\u00a8\u0006M"
    }
    d2 = {
        "Lcom/truecaller/placepicker/PlacePickerActivity;",
        "Ln3/b/a/h;",
        "Lcom/google/android/gms/maps/OnMapReadyCallback;",
        "Le/a/k4/h;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onDestroy",
        "()V",
        "",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "onActivityResult",
        "(IILandroid/content/Intent;)V",
        "Landroid/view/Menu;",
        "menu",
        "",
        "onCreateOptionsMenu",
        "(Landroid/view/Menu;)Z",
        "Landroid/view/MenuItem;",
        "item",
        "onOptionsItemSelected",
        "(Landroid/view/MenuItem;)Z",
        "Lcom/google/android/gms/maps/GoogleMap;",
        "googleMap",
        "O3",
        "(Lcom/google/android/gms/maps/GoogleMap;)V",
        "",
        "placeName",
        "G",
        "(Ljava/lang/String;)V",
        "Lcom/truecaller/placepicker/data/GeocodedPlace;",
        "geocodedPlace",
        "R7",
        "(Lcom/truecaller/placepicker/data/GeocodedPlace;)V",
        "errorMessage",
        "F1",
        "(I)V",
        "D2",
        "",
        "latitude",
        "longitude",
        "S3",
        "(DD)V",
        "Z6",
        "i4",
        "Lcom/google/android/gms/common/api/ResolvableApiException;",
        "e",
        "j7",
        "(Lcom/google/android/gms/common/api/ResolvableApiException;)V",
        "D1",
        "show",
        "t2",
        "(Z)V",
        "P1",
        "y5",
        "Le/a/k4/g;",
        "d",
        "Le/a/k4/g;",
        "qa",
        "()Le/a/k4/g;",
        "setPresenter",
        "(Le/a/k4/g;)V",
        "presenter",
        "Le/a/k4/p/a;",
        "f",
        "Ls1/g;",
        "pa",
        "()Le/a/k4/p/a;",
        "binding",
        "Lcom/google/android/gms/maps/GoogleMap;",
        "map",
        "<init>",
        "placepicker_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public d:Le/a/k4/g;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public e:Lcom/google/android/gms/maps/GoogleMap;

.field public final f:Ls1/g;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Le/a/k4/b;-><init>()V

    .line 2
    sget-object v0, Ls1/h;->c:Ls1/h;

    new-instance v1, Lcom/truecaller/placepicker/PlacePickerActivity$a;

    invoke-direct {v1, p0}, Lcom/truecaller/placepicker/PlacePickerActivity$a;-><init>(Ln3/b/a/h;)V

    invoke-static {v0, v1}, Le/q/f/a/d/a;->O1(Ls1/h;Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/truecaller/placepicker/PlacePickerActivity;->f:Ls1/g;

    return-void
.end method


# virtual methods
.method public D1()V
    .locals 0

    return-void
.end method

.method public D2()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/libraries/places/api/model/Place$Field;

    .line 1
    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Field;->ID:Lcom/google/android/libraries/places/api/model/Place$Field;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Field;->NAME:Lcom/google/android/libraries/places/api/model/Place$Field;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Field;->ADDRESS:Lcom/google/android/libraries/places/api/model/Place$Field;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Field;->ADDRESS_COMPONENTS:Lcom/google/android/libraries/places/api/model/Place$Field;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Field;->LAT_LNG:Lcom/google/android/libraries/places/api/model/Place$Field;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;

    sget-object v2, Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;->FULLSCREEN:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    invoke-direct {v1, v2, v0}, Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;-><init>(Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;Ljava/util/List;)V

    invoke-virtual {v1, p0}, Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;->build(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Autocomplete.IntentBuild\u2026REEN, fields).build(this)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x2711

    .line 3
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public F1(I)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-static {p0, v0, p1, v0, v1}, Le/a/p5/s0/g;->S1(Landroid/content/Context;ILjava/lang/CharSequence;II)Landroid/widget/Toast;

    return-void
.end method

.method public G(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/placepicker/PlacePickerActivity;->pa()Le/a/k4/p/a;

    move-result-object v0

    iget-object v0, v0, Le/a/k4/p/a;->f:Landroid/widget/TextView;

    const-string v1, "binding.tvAddress"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public O3(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 13

    const-string v0, "googleMap"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/placepicker/PlacePickerActivity;->e:Lcom/google/android/gms/maps/GoogleMap;

    .line 2
    sget v0, Lcom/truecaller/placepicker/R$raw;->placepicker_map_style:I

    .line 3
    sget-object v1, Lcom/google/android/gms/maps/model/MapStyleOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4
    invoke-virtual {p0}, Ln3/b/a/h;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 5
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v3, 0x400

    const/4 v4, 0x1

    .line 6
    invoke-static {v1, v2, v4, v3}, Lcom/google/android/gms/common/util/IOUtils;->a(Ljava/io/InputStream;Ljava/io/OutputStream;ZI)J

    .line 7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 8
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 9
    new-instance v1, Lcom/google/android/gms/maps/model/MapStyleOptions;

    invoke-direct {v1, v2}, Lcom/google/android/gms/maps/model/MapStyleOptions;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 10
    :try_start_1
    iget-object v0, p1, Lcom/google/android/gms/maps/GoogleMap;->a:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->d1(Lcom/google/android/gms/maps/model/MapStyleOptions;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 11
    new-instance v0, Lcom/truecaller/placepicker/PlacePickerActivity$b;

    invoke-direct {v0, p1, p0}, Lcom/truecaller/placepicker/PlacePickerActivity$b;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/truecaller/placepicker/PlacePickerActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->d(Lcom/google/android/gms/maps/GoogleMap$OnCameraIdleListener;)V

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-wide/16 v0, 0x0

    const-string v2, "latitude"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v2

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v4, "longitude"

    invoke-virtual {p1, v4, v0, v1}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    .line 14
    iget-object p1, p0, Lcom/truecaller/placepicker/PlacePickerActivity;->d:Le/a/k4/g;

    const/4 v6, 0x0

    if-eqz p1, :cond_2

    move-object v7, p1

    check-cast v7, Le/a/k4/i;

    cmpg-double p1, v2, v0

    if-eqz p1, :cond_0

    cmpg-double p1, v4, v0

    if-eqz p1, :cond_0

    .line 15
    iget-object p1, v7, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k4/h;

    if-eqz p1, :cond_1

    invoke-interface {p1, v2, v3, v4, v5}, Le/a/k4/h;->S3(DD)V

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 16
    new-instance v10, Le/a/k4/m;

    invoke-direct {v10, v7, v6}, Le/a/k4/m;-><init>(Le/a/k4/i;Ls1/w/d;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string p1, "presenter"

    .line 17
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v6

    :catch_0
    move-exception p1

    .line 18
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0

    :catch_1
    move-exception p1

    .line 19
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x25

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to read resource "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public P1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/placepicker/PlacePickerActivity;->pa()Le/a/k4/p/a;

    move-result-object v0

    iget-object v0, v0, Le/a/k4/p/a;->g:Landroid/widget/TextView;

    const-string v1, "binding.tvChangeAddress"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    return-void
.end method

.method public R7(Lcom/truecaller/placepicker/data/GeocodedPlace;)V
    .locals 2

    const-string v0, "geocodedPlace"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "selected_location"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 3
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public S3(DD)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/placepicker/PlacePickerActivity;->e:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/high16 p1, 0x41900000    # 18.0f

    .line 2
    :try_start_0
    new-instance p2, Lcom/google/android/gms/maps/CameraUpdate;

    invoke-static {}, Lcom/google/android/gms/maps/CameraUpdateFactory;->b()Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    move-result-object p3

    invoke-interface {p3, v1, p1}, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;->Q0(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/maps/CameraUpdate;-><init>(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3
    :try_start_1
    iget-object p1, v0, Lcom/google/android/gms/maps/GoogleMap;->a:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    .line 4
    iget-object p2, p2, Lcom/google/android/gms/maps/CameraUpdate;->a:Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 5
    invoke-interface {p1, p2}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->w(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    new-instance p2, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {p2, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw p2

    :catch_1
    move-exception p1

    .line 7
    new-instance p2, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {p2, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw p2

    :cond_0
    :goto_0
    return-void
.end method

.method public Z6()V
    .locals 3

    .line 1
    sget v0, Lcom/truecaller/placepicker/R$string;->placepicker_error_device_location_unavailable:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-static {p0, v1, v0, v1, v2}, Le/a/p5/s0/g;->S1(Landroid/content/Context;ILjava/lang/CharSequence;II)Landroid/widget/Toast;

    return-void
.end method

.method public i4(I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public j7(Lcom/google/android/gms/common/api/ResolvableApiException;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object p1, p1, Lcom/google/android/gms/common/api/ApiException;->a:Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x2712

    .line 2
    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/common/api/Status;->r2(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-static {p1}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    .line 1
    invoke-super {p0, p1, p2, p3}, Ln3/r/a/l;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x2711

    const-string v1, "presenter"

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq p1, v0, :cond_4

    const/16 p3, 0x2712

    if-eq p1, p3, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/truecaller/placepicker/PlacePickerActivity;->d:Le/a/k4/g;

    if-eqz p1, :cond_3

    const/4 p3, 0x1

    if-ne p2, v2, :cond_1

    move p2, p3

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    move-object v4, p1

    check-cast v4, Le/a/k4/i;

    .line 3
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ne p2, p3, :cond_2

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 4
    new-instance v7, Le/a/k4/l;

    invoke-direct {v7, v4, v3}, Le/a/k4/l;-><init>(Le/a/k4/i;Ls1/w/d;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_1

    :cond_2
    if-nez p2, :cond_6

    .line 5
    iget-object p1, v4, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k4/h;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Le/a/k4/h;->Z6()V

    goto :goto_1

    .line 6
    :cond_3
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    :cond_4
    if-ne p2, v2, :cond_6

    if-eqz p3, :cond_6

    .line 7
    :try_start_0
    invoke-static {p3}, Lcom/google/android/libraries/places/widget/Autocomplete;->getPlaceFromIntent(Landroid/content/Intent;)Lcom/google/android/libraries/places/api/model/Place;

    move-result-object p1

    const-string p2, "Autocomplete.getPlaceFromIntent(data)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/truecaller/placepicker/PlacePickerActivity;->d:Le/a/k4/g;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_5

    check-cast p2, Le/a/k4/i;

    :try_start_1
    invoke-virtual {p2, p1}, Le/a/k4/i;->Lj(Lcom/google/android/libraries/places/api/model/Place;)V

    goto :goto_1

    :cond_5
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    throw v3

    :catch_0
    move-exception p1

    const-string p2, "invalid autocomplete search result."

    .line 9
    invoke-static {p1, p2}, Le/a/c/p/a;->J1(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/placepicker/PlacePickerActivity;->pa()Le/a/k4/p/a;

    move-result-object p1

    const-string v0, "binding"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p1, Le/a/k4/p/a;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 4
    invoke-virtual {p0, p1}, Ln3/b/a/h;->setContentView(Landroid/view/View;)V

    .line 5
    iget-object p1, p0, Lcom/truecaller/placepicker/PlacePickerActivity;->d:Le/a/k4/g;

    const/4 v0, 0x0

    const-string v1, "presenter"

    if-eqz p1, :cond_9

    check-cast p1, Le/a/k4/i;

    invoke-virtual {p1, p0}, Le/a/k4/i;->Y0(Ljava/lang/Object;)V

    .line 6
    invoke-static {}, Lcom/google/android/libraries/places/api/Places;->isInitialized()Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 7
    sget-object p1, Le/a/k4/c;->b:Ljava/lang/String;

    .line 8
    sget-object v3, Le/a/k4/c;->a:Ljava/lang/String;

    .line 9
    invoke-static {p1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_1

    .line 10
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 11
    sget-object v3, Le/a/k4/c;->a:Ljava/lang/String;

    .line 12
    invoke-static {p1, v3}, Lcom/google/android/libraries/places/api/Places;->initialize(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 13
    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v3, "Api key is invalid"

    invoke-direct {p1, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-static {p1}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    .line 14
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    sget v3, Lcom/truecaller/placepicker/R$id;->map:I

    invoke-virtual {p1, v3}, Landroidx/fragment/app/FragmentManager;->J(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    const-string v3, "null cannot be cast to non-null type com.google.android.gms.maps.SupportMapFragment"

    invoke-static {p1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/maps/SupportMapFragment;

    .line 15
    invoke-virtual {p1, p0}, Lcom/google/android/gms/maps/SupportMapFragment;->OA(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    .line 16
    invoke-virtual {p0}, Lcom/truecaller/placepicker/PlacePickerActivity;->pa()Le/a/k4/p/a;

    move-result-object p1

    iget-object p1, p1, Le/a/k4/p/a;->e:Lcom/google/android/material/appbar/MaterialToolbar;

    invoke-virtual {p0, p1}, Ln3/b/a/h;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 17
    invoke-virtual {p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, v2}, Ln3/b/a/a;->n(Z)V

    .line 18
    :cond_2
    invoke-virtual {p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object p1

    if-eqz p1, :cond_3

    sget v3, Lcom/truecaller/placepicker/R$drawable;->ic_toolbar_close:I

    invoke-virtual {p1, v3}, Ln3/b/a/a;->s(I)V

    .line 19
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string v3, "toolbarTitle"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3, p1}, Ln3/b/a/a;->y(Ljava/lang/CharSequence;)V

    .line 20
    :cond_4
    invoke-virtual {p0}, Lcom/truecaller/placepicker/PlacePickerActivity;->pa()Le/a/k4/p/a;

    move-result-object p1

    iget-object p1, p1, Le/a/k4/p/a;->c:Landroidx/cardview/widget/CardView;

    new-instance v3, Li1;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p0}, Li1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    invoke-virtual {p0}, Lcom/truecaller/placepicker/PlacePickerActivity;->pa()Le/a/k4/p/a;

    move-result-object p1

    iget-object p1, p1, Le/a/k4/p/a;->g:Landroid/widget/TextView;

    new-instance v3, Li1;

    invoke-direct {v3, v2, p0}, Li1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object p1, p0, Lcom/truecaller/placepicker/PlacePickerActivity;->d:Le/a/k4/g;

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v0, "showAutocomplete"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_5
    check-cast p1, Le/a/k4/i;

    .line 23
    invoke-static {v0}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k4/h;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Le/a/k4/h;->P1()V

    goto :goto_1

    .line 24
    :cond_6
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k4/h;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Le/a/k4/h;->y5()V

    :cond_7
    :goto_1
    return-void

    .line 25
    :cond_8
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_9
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln3/b/a/h;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/truecaller/placepicker/R$menu;->menu_placepicker:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/b/a/h;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/placepicker/PlacePickerActivity;->d:Le/a/k4/g;

    if-eqz v0, :cond_0

    check-cast v0, Le/a/k4/i;

    invoke-virtual {v0}, Le/a/k4/i;->c()V

    return-void

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const-string v0, "item"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 2
    sget v1, Lcom/truecaller/placepicker/R$id;->action_done:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/truecaller/placepicker/PlacePickerActivity;->d:Le/a/k4/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast v0, Le/a/k4/i;

    .line 3
    iget-object v2, v0, Le/a/k4/i;->n:Le/a/k4/n/a;

    new-instance v3, Le/a/k4/n/f$a;

    iget v4, v0, Le/a/k4/i;->g:I

    invoke-direct {v3, v4}, Le/a/k4/n/f$a;-><init>(I)V

    invoke-interface {v2, v3}, Le/a/k4/n/a;->a(Le/a/k4/n/f;)V

    .line 4
    iget-object v2, v0, Le/a/k4/i;->e:Lcom/truecaller/placepicker/data/GeocodedPlace;

    if-eqz v2, :cond_1

    .line 5
    iget-object v3, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/k4/h;

    if-eqz v3, :cond_0

    invoke-interface {v3, v2}, Le/a/k4/h;->R7(Lcom/truecaller/placepicker/data/GeocodedPlace;)V

    sget-object v1, Ls1/s;->a:Ls1/s;

    :cond_0
    if-eqz v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/k4/h;

    if-eqz v0, :cond_4

    sget v1, Lcom/truecaller/placepicker/R$string;->placepicker_error_no_location_selected:I

    invoke-interface {v0, v1}, Le/a/k4/h;->F1(I)V

    goto :goto_0

    :cond_2
    const-string p1, "presenter"

    .line 7
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_3
    const v1, 0x102002c

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 10
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final pa()Le/a/k4/p/a;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/placepicker/PlacePickerActivity;->f:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/k4/p/a;

    return-object v0
.end method

.method public final qa()Le/a/k4/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/placepicker/PlacePickerActivity;->d:Le/a/k4/g;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public t2(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/placepicker/PlacePickerActivity;->pa()Le/a/k4/p/a;

    move-result-object v0

    iget-object v0, v0, Le/a/k4/p/a;->d:Landroid/widget/ProgressBar;

    const-string v1, "binding.pbLoading"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public y5()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/placepicker/PlacePickerActivity;->pa()Le/a/k4/p/a;

    move-result-object v0

    iget-object v0, v0, Le/a/k4/p/a;->g:Landroid/widget/TextView;

    const-string v1, "binding.tvChangeAddress"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    return-void
.end method
