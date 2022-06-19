.class public Lf/h/l/c0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/h/l/c0/d$b;,
        Lf/h/l/c0/d$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 3
    new-instance v0, Lf/h/l/c0/d$b;

    invoke-direct {v0, p0}, Lf/h/l/c0/d$b;-><init>(Lf/h/l/c0/d;)V

    iput-object v0, p0, Lf/h/l/c0/d;->a:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 4
    new-instance v0, Lf/h/l/c0/d$a;

    invoke-direct {v0, p0}, Lf/h/l/c0/d$a;-><init>(Lf/h/l/c0/d;)V

    iput-object v0, p0, Lf/h/l/c0/d;->a:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lf/h/l/c0/d;->a:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lf/h/l/c0/d;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(I)Lf/h/l/c0/c;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Ljava/lang/String;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lf/h/l/c0/c;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public c(I)Lf/h/l/c0/c;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/h/l/c0/d;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public e(IILandroid/os/Bundle;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
