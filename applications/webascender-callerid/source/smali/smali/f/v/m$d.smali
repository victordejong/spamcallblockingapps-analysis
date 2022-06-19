.class Lf/v/m$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/v/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field a:Landroid/view/View;

.field b:Ljava/lang/String;

.field c:Lf/v/s;

.field d:Lf/v/m0;

.field e:Lf/v/m;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/lang/String;Lf/v/m;Lf/v/m0;Lf/v/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/v/m$d;->a:Landroid/view/View;

    .line 3
    iput-object p2, p0, Lf/v/m$d;->b:Ljava/lang/String;

    .line 4
    iput-object p5, p0, Lf/v/m$d;->c:Lf/v/s;

    .line 5
    iput-object p4, p0, Lf/v/m$d;->d:Lf/v/m0;

    .line 6
    iput-object p3, p0, Lf/v/m$d;->e:Lf/v/m;

    return-void
.end method
