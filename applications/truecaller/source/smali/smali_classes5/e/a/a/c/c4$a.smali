.class public final Le/a/a/c/c4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/c4;->Ij()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/r2/d0<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/c/c4;


# direct methods
.method public constructor <init>(Le/a/a/c/c4;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/c4$a;->a:Le/a/a/c/c4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    iget-object v0, p0, Le/a/a/c/c4$a;->a:Le/a/a/c/c4;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iput p1, v0, Le/a/a/c/c4;->h:I

    .line 4
    invoke-virtual {v0}, Le/a/a/c/c4;->Kj()V

    return-void
.end method
