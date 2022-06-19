.class public final Lp3/a/n1/m1$o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/m1$o;->a(Lp3/a/g1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/g1;

.field public final synthetic b:Lp3/a/n1/m1$o;


# direct methods
.method public constructor <init>(Lp3/a/n1/m1$o;Lp3/a/g1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lp3/a/n1/m1$o$a;->b:Lp3/a/n1/m1$o;

    iput-object p2, p0, Lp3/a/n1/m1$o$a;->a:Lp3/a/g1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/n1/m1$o$a;->b:Lp3/a/n1/m1$o;

    iget-object v1, p0, Lp3/a/n1/m1$o$a;->a:Lp3/a/g1;

    invoke-static {v0, v1}, Lp3/a/n1/m1$o;->c(Lp3/a/n1/m1$o;Lp3/a/g1;)V

    return-void
.end method
