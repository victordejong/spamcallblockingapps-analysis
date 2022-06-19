.class public final Le/a/r3/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Ls1/w/f;


# direct methods
.method public constructor <init>(Ls1/w/f;)V
    .locals 0

    iput-object p1, p0, Le/a/r3/e;->a:Ls1/w/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    iget-object p1, p0, Le/a/r3/e;->a:Ls1/w/f;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-static {p1, p2, v0, p2}, Ls1/a/a/a/v0/f/d;->R(Ls1/w/f;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method
