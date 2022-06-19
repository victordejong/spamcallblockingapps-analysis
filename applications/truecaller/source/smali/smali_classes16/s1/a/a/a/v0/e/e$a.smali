.class public final Ls1/a/a/a/v0/e/e$a;
.super Ls1/a/a/a/v0/h/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/e/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/a/a/a/v0/h/b<",
        "Ls1/a/a/a/v0/e/e;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/h/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ls1/a/a/a/v0/h/j;
        }
    .end annotation

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/e;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Ls1/a/a/a/v0/e/e;-><init>(Ls1/a/a/a/v0/h/d;Ls1/a/a/a/v0/h/f;Ls1/a/a/a/v0/e/a;)V

    return-object v0
.end method
