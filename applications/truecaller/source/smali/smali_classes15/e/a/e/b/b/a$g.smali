.class public final Le/a/e/b/b/a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/b/b/a;->Ha(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/e/b/b/a;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public constructor <init>(Le/a/e/b/b/a;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Le/a/e/b/b/a$g;->a:Le/a/e/b/b/a;

    iput-object p2, p0, Le/a/e/b/b/a$g;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/e/b/b/a$g;->a:Le/a/e/b/b/a;

    invoke-virtual {p1}, Le/a/e/b/b/a;->OA()Le/a/e/b/b/c;

    move-result-object p1

    iget-object v0, p0, Le/a/e/b/b/a$g;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, p2}, Le/a/e/b/b/c;->Gg(Ljava/lang/String;)V

    return-void
.end method
