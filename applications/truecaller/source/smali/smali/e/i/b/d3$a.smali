.class public final Le/i/b/d3$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/i/b/d3;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Le/i/b/q2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Lcom/criteo/publisher/model/AdUnit;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Le/i/b/d3$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/i/b/d3$a;

    invoke-direct {v0}, Le/i/b/d3$a;-><init>()V

    sput-object v0, Le/i/b/d3$a;->b:Le/i/b/d3$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/criteo/publisher/model/AdUnit;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
