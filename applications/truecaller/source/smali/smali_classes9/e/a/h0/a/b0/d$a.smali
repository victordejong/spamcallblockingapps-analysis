.class public final Le/a/h0/a/b0/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h0/a/b0/d;->Ij()V
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
.field public final synthetic a:Le/a/h0/a/b0/d;


# direct methods
.method public constructor <init>(Le/a/h0/a/b0/d;)V
    .locals 0

    iput-object p1, p0, Le/a/h0/a/b0/d$a;->a:Le/a/h0/a/b0/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    iget-object p1, p0, Le/a/h0/a/b0/d$a;->a:Le/a/h0/a/b0/d;

    .line 3
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h0/a/b0/e;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Le/a/h0/a/b0/e;->x()V

    .line 5
    :cond_0
    iget-object p1, p0, Le/a/h0/a/b0/d$a;->a:Le/a/h0/a/b0/d;

    .line 6
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h0/a/b0/e;

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p1}, Le/a/h0/a/b0/e;->finish()V

    :cond_1
    return-void
.end method
