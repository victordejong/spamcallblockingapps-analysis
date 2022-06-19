.class public final synthetic Le/a/l/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/l/i1;

.field public final synthetic b:Le/a/l/i1$a;


# direct methods
.method public synthetic constructor <init>(Le/a/l/i1;Le/a/l/i1$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/h;->a:Le/a/l/i1;

    iput-object p2, p0, Le/a/l/h;->b:Le/a/l/i1$a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Le/a/l/h;->a:Le/a/l/i1;

    iget-object p2, p0, Le/a/l/h;->b:Le/a/l/i1$a;

    .line 1
    invoke-virtual {p1}, Le/a/l/i1;->g()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Le/a/l/i1$a;->a(Ljava/lang/String;)V

    return-void
.end method
