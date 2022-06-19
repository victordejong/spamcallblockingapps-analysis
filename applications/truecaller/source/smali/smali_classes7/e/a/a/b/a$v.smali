.class public final Le/a/a/b/a$v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/b/a;->we(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/b/a;


# direct methods
.method public constructor <init>(Le/a/a/b/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le/a/a/b/a$v;->a:Le/a/a/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/a/b/a$v;->a:Le/a/a/b/a;

    invoke-virtual {p1}, Le/a/a/b/a;->QA()Le/a/a/b/p;

    move-result-object p1

    invoke-interface {p1}, Le/a/a/b/p;->Uq()V

    return-void
.end method
