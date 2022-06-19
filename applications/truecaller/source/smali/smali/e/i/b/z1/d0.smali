.class public abstract Le/i/b/z1/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/i/b/z1/d0$b;,
        Le/i/b/z1/d0$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/i/b/z1/d0$a;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b()I
    .annotation runtime Le/m/e/d0/b;
        value = "profile_id"
    .end annotation
.end method

.method public abstract c()Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "wrapper_version"
    .end annotation
.end method
