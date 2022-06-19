.class public final Le/a/a/c/k8/c$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/k8/c;->sp(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/c/k8/c;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public constructor <init>(Le/a/a/c/k8/c;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/k8/c$g;->a:Le/a/a/c/k8/c;

    iput-object p2, p0, Le/a/a/c/k8/c$g;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/a/c/k8/c$g;->a:Le/a/a/c/k8/c;

    invoke-virtual {p1}, Le/a/a/c/k8/c;->PA()Le/a/a/c/k8/m;

    move-result-object p1

    iget-object v0, p0, Le/a/a/c/k8/c$g;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Le/a/a/c/k8/m;->ya(Ljava/util/List;)V

    return-void
.end method
