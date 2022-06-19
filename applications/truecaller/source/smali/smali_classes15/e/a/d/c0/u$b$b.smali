.class public final Le/a/d/c0/u$b$b;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/u$b;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/d/c0/u$b;

.field public final synthetic b:Lq3/a/w2/x;


# direct methods
.method public constructor <init>(Le/a/d/c0/u$b;Lq3/a/w2/x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/w2/x<",
            "-",
            "Le/a/d/c0/s;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/d/c0/u$b$b;->a:Le/a/d/c0/u$b;

    iput-object p2, p0, Le/a/d/c0/u$b$b;->b:Lq3/a/w2/x;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object p2, p0, Le/a/d/c0/u$b$b;->a:Le/a/d/c0/u$b;

    iget-object p2, p2, Le/a/d/c0/u$b;->g:Le/a/d/c0/u;

    .line 2
    iget-object v0, p2, Le/a/d/c0/u;->c:Le/a/d/c0/m1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Le/a/p5/s0/g;->u0(Le/a/d/c0/m1;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v0

    .line 3
    invoke-virtual {p2, p1, v0}, Le/a/d/c0/u;->d(IZ)Le/a/d/c0/s;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Call state is changed to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5
    iget-object p2, p0, Le/a/d/c0/u$b$b;->b:Lq3/a/w2/x;

    invoke-static {p2, p1}, Le/a/p5/s0/g;->l1(Lq3/a/w2/d0;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
