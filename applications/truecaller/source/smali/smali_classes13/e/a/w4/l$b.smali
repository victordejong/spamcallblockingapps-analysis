.class public Le/a/w4/l$b;
.super Le/m/e/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/w4/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/m/e/b0<",
        "Lcom/truecaller/data/dto/ContactDto$Contact$Tag;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/a/w4/l$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/e/b0;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Le/m/e/g0/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/truecaller/data/dto/ContactDto$Contact$Tag;

    invoke-direct {v0}, Lcom/truecaller/data/dto/ContactDto$Contact$Tag;-><init>()V

    .line 2
    invoke-virtual {p1}, Le/m/e/g0/a;->z0()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact$Tag;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public write(Le/m/e/g0/c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/truecaller/data/dto/ContactDto$Contact$Tag;

    .line 2
    iget-object p2, p2, Lcom/truecaller/data/dto/ContactDto$Contact$Tag;->tag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Le/m/e/g0/c;->t0(Ljava/lang/String;)Le/m/e/g0/c;

    return-void
.end method
