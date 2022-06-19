.class public final Lu3/p0/j/l;
.super Lu3/p0/f/a;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lu3/p0/j/f;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZLu3/p0/j/f;)V
    .locals 0

    iput-object p5, p0, Lu3/p0/j/l;->e:Lu3/p0/j/f;

    .line 1
    invoke-direct {p0, p3, p4}, Lu3/p0/f/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 3

    .line 1
    iget-object v0, p0, Lu3/p0/j/l;->e:Lu3/p0/j/f;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v1}, Lu3/p0/j/f;->E(ZII)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method
