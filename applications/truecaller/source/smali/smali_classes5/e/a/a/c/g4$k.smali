.class public final Le/a/a/c/g4$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d/c0/l0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/g4;->jk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/c/g4;

.field public final synthetic b:Le/a/a/c/k4;


# direct methods
.method public constructor <init>(Le/a/a/c/g4;Le/a/a/c/k4;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/g4$k;->a:Le/a/a/c/g4;

    iput-object p2, p0, Le/a/a/c/g4$k;->b:Le/a/a/c/k4;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/g4$k;->a:Le/a/a/c/g4;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 2
    iput-object p1, v0, Le/a/a/c/g4;->n:Ljava/lang/Boolean;

    .line 3
    iget-object p1, p0, Le/a/a/c/g4$k;->b:Le/a/a/c/k4;

    iget-object v0, p0, Le/a/a/c/g4$k;->a:Le/a/a/c/g4;

    .line 4
    invoke-virtual {v0}, Le/a/a/c/g4;->Vj()Z

    move-result v0

    .line 5
    invoke-interface {p1, v0}, Le/a/a/c/k4;->xz(Z)V

    return-void
.end method
