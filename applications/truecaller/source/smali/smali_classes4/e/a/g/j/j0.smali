.class public final Le/a/g/j/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d/c0/l0;


# instance fields
.field public final synthetic a:Ls1/w/d;


# direct methods
.method public constructor <init>(Ls1/w/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/g/j/j0;->a:Ls1/w/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/g/j/j0;->a:Ls1/w/d;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Ls1/w/d;->c(Ljava/lang/Object;)V

    return-void
.end method
