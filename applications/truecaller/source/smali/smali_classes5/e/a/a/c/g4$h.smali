.class public final Le/a/a/c/g4$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/g4;->K2(J)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/c/g4;


# direct methods
.method public constructor <init>(Le/a/a/c/g4;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/g4$h;->a:Le/a/a/c/g4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    iget-object p1, p0, Le/a/a/c/g4$h;->a:Le/a/a/c/g4;

    invoke-virtual {p1}, Le/a/a/c/g4;->C4()V

    .line 3
    iget-object p1, p0, Le/a/a/c/g4$h;->a:Le/a/a/c/g4;

    .line 4
    iget-object p1, p1, Le/a/a/c/g4;->v0:Le/a/a/c/l4;

    .line 5
    invoke-interface {p1}, Le/a/a/c/l4;->a()V

    return-void
.end method
