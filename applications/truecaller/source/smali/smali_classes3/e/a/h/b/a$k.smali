.class public final Le/a/h/b/a$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/a;->xA(Le/a/h/b/w0/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/h/b/a;

.field public final synthetic b:Le/a/h/b/w0/c;


# direct methods
.method public constructor <init>(Le/a/h/b/a;Le/a/h/b/w0/c;)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/a$k;->a:Le/a/h/b/a;

    iput-object p2, p0, Le/a/h/b/a$k;->b:Le/a/h/b/w0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/h/b/a$k;->a:Le/a/h/b/a;

    invoke-static {p1}, Le/a/h/b/a;->a(Le/a/h/b/a;)Le/a/h/b/v$a;

    move-result-object p1

    iget-object v0, p0, Le/a/h/b/a$k;->b:Le/a/h/b/w0/c;

    invoke-interface {p1, v0}, Le/a/h/b/v$a;->Uh(Le/a/h/b/w0/c;)V

    return-void
.end method
