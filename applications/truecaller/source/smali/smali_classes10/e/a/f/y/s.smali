.class public final Le/a/f/y/s;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/f/y/o;


# direct methods
.method public constructor <init>(Le/a/f/y/o;)V
    .locals 0

    iput-object p1, p0, Le/a/f/y/s;->b:Le/a/f/y/o;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/f/y/s;->b:Le/a/f/y/o;

    .line 2
    iget-object v0, v0, Le/a/f/y/o;->l:Lq3/a/w2/h;

    sget-object v1, Lcom/truecaller/callbubbles/CallBubbleUIEvent;->VIEW_CLICKED:Lcom/truecaller/callbubbles/CallBubbleUIEvent;

    invoke-interface {v0, v1}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    .line 3
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
