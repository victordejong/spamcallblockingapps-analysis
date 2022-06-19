.class public final Le/a/k4/o/j/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls1/g;

.field public final b:Landroid/location/Geocoder;

.field public final c:Le/a/k4/o/i/a;


# direct methods
.method public constructor <init>(Landroid/location/Geocoder;Le/a/k4/o/i/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "geocoder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placeMapper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k4/o/j/a/a;->b:Landroid/location/Geocoder;

    iput-object p2, p0, Le/a/k4/o/j/a/a;->c:Le/a/k4/o/i/a;

    .line 2
    sget-object p1, Le/a/k4/o/j/a/a$a;->b:Le/a/k4/o/j/a/a$a;

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/k4/o/j/a/a;->a:Ls1/g;

    return-void
.end method
