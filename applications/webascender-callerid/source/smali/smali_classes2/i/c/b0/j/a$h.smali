.class final Li/c/b0/j/a$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/j/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li/c/b0/d/q<",
        "Li/c/b0/b/d0;",
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
.method public a()Li/c/b0/b/d0;
    .locals 1

    .line 1
    sget-object v0, Li/c/b0/j/a$g;->a:Li/c/b0/b/d0;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Li/c/b0/j/a$h;->a()Li/c/b0/b/d0;

    move-result-object v0

    return-object v0
.end method
