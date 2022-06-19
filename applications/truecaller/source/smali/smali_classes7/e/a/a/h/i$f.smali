.class public final Le/a/a/h/i$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/h/i;->e7(Le/a/k3/l/k/a;)V
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
.field public final synthetic a:Le/a/a/h/i;


# direct methods
.method public constructor <init>(Le/a/a/h/i;Le/a/k3/l/k/a;)V
    .locals 0

    iput-object p1, p0, Le/a/a/h/i$f;->a:Le/a/a/h/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    iget-object v0, p0, Le/a/a/h/i$f;->a:Le/a/a/h/i;

    const-string v1, "demoteAdmin"

    invoke-static {v0, p1, v1}, Le/a/a/h/i;->Ij(Le/a/a/h/i;Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method
