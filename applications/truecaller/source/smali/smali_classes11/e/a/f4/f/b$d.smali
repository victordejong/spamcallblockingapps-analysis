.class public Le/a/f4/f/b$d;
.super Le/m/e/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/f4/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/m/e/b0<",
        "Lcom/truecaller/network/notification/NotificationType;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/a/f4/f/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/e/b0;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Le/m/e/g0/a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/m/e/g0/a;->S()I

    move-result p1

    invoke-static {p1}, Lcom/truecaller/network/notification/NotificationType;->valueOf(I)Lcom/truecaller/network/notification/NotificationType;

    move-result-object p1

    return-object p1
.end method

.method public write(Le/m/e/g0/c;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/truecaller/network/notification/NotificationType;

    .line 2
    iget p2, p2, Lcom/truecaller/network/notification/NotificationType;->value:I

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Le/m/e/g0/c;->k0(J)Le/m/e/g0/c;

    return-void
.end method
