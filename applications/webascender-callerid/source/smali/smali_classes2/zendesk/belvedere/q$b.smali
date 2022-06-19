.class public Lzendesk/belvedere/q$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/belvedere/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Lzendesk/belvedere/s;

.field private final b:Lzendesk/belvedere/n;

.field private final c:I


# direct methods
.method constructor <init>(ILzendesk/belvedere/s;Lzendesk/belvedere/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lzendesk/belvedere/q$b;->c:I

    .line 3
    iput-object p2, p0, Lzendesk/belvedere/q$b;->a:Lzendesk/belvedere/s;

    .line 4
    iput-object p3, p0, Lzendesk/belvedere/q$b;->b:Lzendesk/belvedere/n;

    return-void
.end method


# virtual methods
.method public a()Lzendesk/belvedere/q;
    .locals 4

    .line 1
    iget-object v0, p0, Lzendesk/belvedere/q$b;->a:Lzendesk/belvedere/s;

    iget v1, p0, Lzendesk/belvedere/q$b;->c:I

    invoke-virtual {v0, v1}, Lzendesk/belvedere/s;->c(I)Lf/h/k/c;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lf/h/k/c;->a:Ljava/lang/Object;

    check-cast v1, Lzendesk/belvedere/q;

    .line 3
    iget-object v0, v0, Lf/h/k/c;->b:Ljava/lang/Object;

    check-cast v0, Lzendesk/belvedere/r;

    .line 4
    invoke-virtual {v1}, Lzendesk/belvedere/q;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Lzendesk/belvedere/q$b;->b:Lzendesk/belvedere/n;

    iget v3, p0, Lzendesk/belvedere/q$b;->c:I

    invoke-virtual {v2, v3, v0}, Lzendesk/belvedere/n;->e(ILzendesk/belvedere/r;)V

    :cond_0
    return-object v1
.end method
