.class public final Le/a/r/a/a$e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r/a/a$e;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ls1/w/d;

.field public final synthetic b:Ls1/z/c/y;


# direct methods
.method public constructor <init>(Ls1/w/d;Ls1/z/c/y;)V
    .locals 0

    iput-object p1, p0, Le/a/r/a/a$e$b;->a:Ls1/w/d;

    iput-object p2, p0, Le/a/r/a/a$e$b;->b:Ls1/z/c/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/r/a/a$e$b;->a:Ls1/w/d;

    iget-object v0, p0, Le/a/r/a/a$e$b;->b:Ls1/z/c/y;

    iget-boolean v0, v0, Ls1/z/c/y;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ls1/w/d;->c(Ljava/lang/Object;)V

    return-void
.end method
