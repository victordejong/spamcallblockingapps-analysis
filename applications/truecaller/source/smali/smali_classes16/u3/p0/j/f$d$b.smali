.class public final Lu3/p0/j/f$d$b;
.super Lu3/p0/f/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu3/p0/j/f$d;->a(ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lu3/p0/j/f$d;

.field public final synthetic f:I

.field public final synthetic g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZLu3/p0/j/f$d;II)V
    .locals 0

    iput-object p5, p0, Lu3/p0/j/f$d$b;->e:Lu3/p0/j/f$d;

    iput p6, p0, Lu3/p0/j/f$d$b;->f:I

    iput p7, p0, Lu3/p0/j/f$d$b;->g:I

    .line 1
    invoke-direct {p0, p3, p4}, Lu3/p0/f/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    .line 1
    iget-object v0, p0, Lu3/p0/j/f$d$b;->e:Lu3/p0/j/f$d;

    iget-object v0, v0, Lu3/p0/j/f$d;->b:Lu3/p0/j/f;

    iget v1, p0, Lu3/p0/j/f$d$b;->f:I

    iget v2, p0, Lu3/p0/j/f$d$b;->g:I

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lu3/p0/j/f;->E(ZII)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method
