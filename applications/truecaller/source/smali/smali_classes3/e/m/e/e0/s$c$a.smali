.class public Le/m/e/e0/s$c$a;
.super Le/m/e/e0/s$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/m/e/e0/s$c;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/m/e/e0/s<",
        "TK;TV;>.d<TK;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/m/e/e0/s$c;)V
    .locals 0

    .line 1
    iget-object p1, p1, Le/m/e/e0/s$c;->a:Le/m/e/e0/s;

    invoke-direct {p0, p1}, Le/m/e/e0/s$d;-><init>(Le/m/e/e0/s;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/m/e/e0/s$d;->a()Le/m/e/e0/s$e;

    move-result-object v0

    iget-object v0, v0, Le/m/e/e0/s$e;->f:Ljava/lang/Object;

    return-object v0
.end method
