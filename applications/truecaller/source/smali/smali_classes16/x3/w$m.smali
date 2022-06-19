.class public final Lx3/w$m;
.super Lx3/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx3/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lx3/w<",
        "Lu3/d0$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lx3/w$m;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lx3/w$m;

    invoke-direct {v0}, Lx3/w$m;-><init>()V

    sput-object v0, Lx3/w$m;->a:Lx3/w$m;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lx3/w;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lx3/y;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lu3/d0$c;

    if-eqz p2, :cond_0

    .line 2
    iget-object p1, p1, Lx3/y;->i:Lu3/d0$a;

    invoke-virtual {p1, p2}, Lu3/d0$a;->c(Lu3/d0$c;)Lu3/d0$a;

    :cond_0
    return-void
.end method
