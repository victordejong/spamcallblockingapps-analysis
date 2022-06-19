.class public final Le/a/e/a/s3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/a/s3;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/e/a/s3;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public constructor <init>(Le/a/e/a/s3;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Le/a/e/a/s3$a;->a:Le/a/e/a/s3;

    iput-object p2, p0, Le/a/e/a/s3$a;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Le/a/e/a/s3$a;->a:Le/a/e/a/s3;

    .line 2
    iget-object v0, v0, Le/a/e/a/s3;->a:Le/a/p4/b;

    .line 3
    iget-object v1, p0, Le/a/e/a/s3$a;->b:Ljava/util/List;

    add-int/lit8 p2, p2, -0x1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {v0, p2}, Le/a/p4/b;->a1(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Le/a/e/a/s3$a;->a:Le/a/e/a/s3;

    .line 5
    iget-object p2, p2, Le/a/e/a/s3;->a:Le/a/p4/b;

    const/4 v0, 0x0

    .line 6
    invoke-interface {p2, v0}, Le/a/p4/b;->a1(Ljava/lang/String;)V

    .line 7
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
