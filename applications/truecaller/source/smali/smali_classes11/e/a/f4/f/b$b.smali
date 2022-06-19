.class public interface abstract Le/a/f4/f/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/f4/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/String;JLjava/lang/String;)Lx3/b;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lx3/h0/s;
            value = "notifScope"
        .end annotation
    .end param
    .param p2    # J
        .annotation runtime Lx3/h0/t;
            value = "lastId"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lx3/h0/t;
            value = "language"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            ")",
            "Lx3/b<",
            "Le/a/f4/f/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Lx3/h0/f;
        value = "/notification/{notifScope}"
    .end annotation
.end method
