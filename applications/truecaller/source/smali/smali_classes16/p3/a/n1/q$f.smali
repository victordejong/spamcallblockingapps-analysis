.class public final Lp3/a/n1/q$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "f"
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/n1/q;


# direct methods
.method public constructor <init>(Lp3/a/n1/q;Lp3/a/n1/q$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/q$f;->a:Lp3/a/n1/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lp3/a/q;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/n1/q$f;->a:Lp3/a/n1/q;

    .line 2
    iget-object v0, v0, Lp3/a/n1/q;->j:Lp3/a/n1/s;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->Y2(Lp3/a/q;)Lp3/a/g1;

    move-result-object p1

    invoke-interface {v0, p1}, Lp3/a/n1/s;->h(Lp3/a/g1;)V

    return-void
.end method
