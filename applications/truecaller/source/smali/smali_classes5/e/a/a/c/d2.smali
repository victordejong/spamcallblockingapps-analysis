.class public final synthetic Le/a/a/c/d2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/a/c/y3;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Le/a/a/c/y3;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/d2;->a:Le/a/a/c/y3;

    iput p2, p0, Le/a/a/c/d2;->b:I

    iput-object p3, p0, Le/a/a/c/d2;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Le/a/a/c/d2;->a:Le/a/a/c/y3;

    iget p2, p0, Le/a/a/c/d2;->b:I

    iget-object v0, p0, Le/a/a/c/d2;->c:Ljava/lang/String;

    .line 1
    iget-object p1, p1, Le/a/a/c/y3;->a:Le/a/a/c/c5;

    invoke-virtual {p1, p2, v0}, Le/a/a/c/c5;->Oj(ILjava/lang/String;)V

    return-void
.end method
