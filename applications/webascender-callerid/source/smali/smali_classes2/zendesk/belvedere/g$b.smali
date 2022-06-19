.class abstract Lzendesk/belvedere/g$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/belvedere/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "b"
.end annotation


# instance fields
.field private final a:I

.field private final b:J

.field private final c:Lzendesk/belvedere/r;

.field private d:Z


# direct methods
.method constructor <init>(ILzendesk/belvedere/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lzendesk/belvedere/g$b;->a:I

    .line 3
    iput-object p2, p0, Lzendesk/belvedere/g$b;->c:Lzendesk/belvedere/r;

    .line 4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->hashCode()I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lzendesk/belvedere/g$b;->b:J

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lzendesk/belvedere/g$b;->d:Z

    return-void
.end method


# virtual methods
.method abstract a(Landroid/view/View;)V
.end method

.method b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lzendesk/belvedere/g$b;->b:J

    return-wide v0
.end method

.method c()I
    .locals 1

    .line 1
    iget v0, p0, Lzendesk/belvedere/g$b;->a:I

    return v0
.end method

.method d()Lzendesk/belvedere/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/belvedere/g$b;->c:Lzendesk/belvedere/r;

    return-object v0
.end method

.method e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lzendesk/belvedere/g$b;->d:Z

    return v0
.end method

.method f(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lzendesk/belvedere/g$b;->d:Z

    return-void
.end method
