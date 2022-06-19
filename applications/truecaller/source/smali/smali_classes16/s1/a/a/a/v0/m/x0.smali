.class public abstract Ls1/a/a/a/v0/m/x0;
.super Ls1/a/a/a/v0/m/b1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/m/x0$a;
    }
.end annotation


# static fields
.field public static final b:Ls1/a/a/a/v0/m/x0$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ls1/a/a/a/v0/m/x0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ls1/a/a/a/v0/m/x0$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Ls1/a/a/a/v0/m/x0;->b:Ls1/a/a/a/v0/m/x0$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/m/b1;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/y0;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object p1

    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/m/x0;->h(Ls1/a/a/a/v0/m/v0;)Ls1/a/a/a/v0/m/y0;

    move-result-object p1

    return-object p1
.end method

.method public abstract h(Ls1/a/a/a/v0/m/v0;)Ls1/a/a/a/v0/m/y0;
.end method
