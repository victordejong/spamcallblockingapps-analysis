.class public final Le/a/b0/a/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/b0/a/k$b;,
        Le/a/b0/a/k$a;
    }
.end annotation


# instance fields
.field public a:Le/a/b0/a/k$b;

.field public final b:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/hardware/SensorManager;)V
    .locals 1

    const-string v0, "sensorManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b0/a/k;->b:Landroid/hardware/SensorManager;

    return-void
.end method
