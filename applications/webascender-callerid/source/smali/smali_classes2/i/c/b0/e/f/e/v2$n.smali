.class final Li/c/b0/e/f/e/v2$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/e/f/e/v2$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/v2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li/c/b0/e/f/e/v2$b<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Li/c/b0/e/f/e/v2$g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/e/f/e/v2$g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/f/e/v2$o;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Li/c/b0/e/f/e/v2$o;-><init>(I)V

    return-object v0
.end method
