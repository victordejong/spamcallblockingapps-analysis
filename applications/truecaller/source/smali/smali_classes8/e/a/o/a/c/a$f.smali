.class public final Le/a/o/a/c/a$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/o/a/c/a;->Jj(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/o/a/c/g;

.field public final synthetic b:Le/a/o/a/c/a;


# direct methods
.method public constructor <init>(Le/a/o/a/c/g;Le/a/o/a/c/a;)V
    .locals 0

    iput-object p1, p0, Le/a/o/a/c/a$f;->a:Le/a/o/a/c/g;

    iput-object p2, p0, Le/a/o/a/c/a$f;->b:Le/a/o/a/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/o/a/c/a$f;->b:Le/a/o/a/c/a;

    invoke-virtual {p1}, Le/a/o/a/c/a;->RA()Le/a/o/a/c/k;

    move-result-object p1

    iget-object v0, p0, Le/a/o/a/c/a$f;->a:Le/a/o/a/c/g;

    invoke-interface {p1, v0}, Le/a/o/a/c/k;->z3(Le/a/o/a/c/g;)V

    return-void
.end method
