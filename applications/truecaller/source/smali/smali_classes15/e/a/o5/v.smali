.class public final Le/a/o5/v;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/p<",
        "Lcom/truecaller/data/entity/Contact;",
        "TT;TR;>;"
    }
.end annotation


# static fields
.field public static final b:Le/a/o5/v;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/o5/v;

    invoke-direct {v0}, Le/a/o5/v;-><init>()V

    sput-object v0, Le/a/o5/v;->b:Le/a/o5/v;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/truecaller/data/entity/Contact;

    const-string p2, "c"

    .line 1
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
