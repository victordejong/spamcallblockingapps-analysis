.class public abstract Le/a/f4/g/p$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/f4/g/p$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/f4/g/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Aa(Ljava/lang/Throwable;I)V
    .locals 0

    return-void
.end method

.method public abstract a(Lcom/truecaller/data/entity/Contact;)V
.end method

.method public p2(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/Contact;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 p2, 0x0

    .line 1
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/data/entity/Contact;

    invoke-virtual {p0, p1}, Le/a/f4/g/p$d;->a(Lcom/truecaller/data/entity/Contact;)V

    return-void
.end method
