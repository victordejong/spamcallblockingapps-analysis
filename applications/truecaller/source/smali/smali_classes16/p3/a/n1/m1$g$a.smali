.class public final Lp3/a/n1/m1$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/m1$g;->a(Lp3/a/i0$f;)Lp3/a/n1/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/n1/m1$g;


# direct methods
.method public constructor <init>(Lp3/a/n1/m1$g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/m1$g$a;->a:Lp3/a/n1/m1$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/n1/m1$g$a;->a:Lp3/a/n1/m1$g;

    iget-object v0, v0, Lp3/a/n1/m1$g;->a:Lp3/a/n1/m1;

    invoke-virtual {v0}, Lp3/a/n1/m1;->l()V

    return-void
.end method
