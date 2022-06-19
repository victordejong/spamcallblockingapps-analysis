.class public final synthetic Le/a/a/c/l1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/a/c/y3;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Le/a/a/c/y3;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/l1;->a:Le/a/a/c/y3;

    iput-object p2, p0, Le/a/a/c/l1;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Le/a/a/c/l1;->a:Le/a/a/c/y3;

    iget-object p2, p0, Le/a/a/c/l1;->b:Ljava/lang/String;

    .line 1
    iget-object p1, p1, Le/a/a/c/y3;->c:Le/a/a/c/s4;

    invoke-interface {p1, p2}, Le/a/a/c/s4;->J8(Ljava/lang/String;)V

    return-void
.end method
