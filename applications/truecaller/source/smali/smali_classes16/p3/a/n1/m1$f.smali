.class public Lp3/a/n1/m1$f;
.super Lp3/a/n1/o0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/m1;->m(Ljava/lang/String;Ljava/lang/String;Lp3/a/r0$c;Lp3/a/r0$a;)Lp3/a/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lp3/a/r0;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lp3/a/n1/m1$f;->b:Ljava/lang/String;

    invoke-direct {p0, p1}, Lp3/a/n1/o0;-><init>(Lp3/a/r0;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/n1/m1$f;->b:Ljava/lang/String;

    return-object v0
.end method
