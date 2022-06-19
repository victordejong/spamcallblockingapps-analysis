.class public final Le/a/r/z/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Ls1/z/b/a;


# direct methods
.method public constructor <init>(Le/a/r/z/o;Ljava/lang/String;ZLs1/z/b/a;)V
    .locals 0

    iput-object p4, p0, Le/a/r/z/p;->a:Ls1/z/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/r/z/p;->a:Ls1/z/b/a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    :cond_0
    return-void
.end method
