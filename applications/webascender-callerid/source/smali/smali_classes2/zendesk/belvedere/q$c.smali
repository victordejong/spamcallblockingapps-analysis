.class public Lzendesk/belvedere/q$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/belvedere/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private final a:Lzendesk/belvedere/s;

.field private final b:I

.field c:Ljava/lang/String;

.field d:Z


# direct methods
.method constructor <init>(ILzendesk/belvedere/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lzendesk/belvedere/q$c;->a:Lzendesk/belvedere/s;

    .line 3
    iput p1, p0, Lzendesk/belvedere/q$c;->b:I

    const-string p1, "*/*"

    .line 4
    iput-object p1, p0, Lzendesk/belvedere/q$c;->c:Ljava/lang/String;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lzendesk/belvedere/q$c;->d:Z

    return-void
.end method


# virtual methods
.method public a(Z)Lzendesk/belvedere/q$c;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lzendesk/belvedere/q$c;->d:Z

    return-object p0
.end method

.method public b()Lzendesk/belvedere/q;
    .locals 4

    .line 1
    iget-object v0, p0, Lzendesk/belvedere/q$c;->a:Lzendesk/belvedere/s;

    iget v1, p0, Lzendesk/belvedere/q$c;->b:I

    iget-object v2, p0, Lzendesk/belvedere/q$c;->c:Ljava/lang/String;

    iget-boolean v3, p0, Lzendesk/belvedere/q$c;->d:Z

    invoke-virtual {v0, v1, v2, v3}, Lzendesk/belvedere/s;->f(ILjava/lang/String;Z)Lzendesk/belvedere/q;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lzendesk/belvedere/q$c;
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/belvedere/q$c;->c:Ljava/lang/String;

    return-object p0
.end method
