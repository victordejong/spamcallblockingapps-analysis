.class public interface abstract annotation Le/k/a/a/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Le/k/a/a/k;
        lenient = .enum Le/k/a/a/o0;->c:Le/k/a/a/o0;
        locale = "##default"
        pattern = ""
        shape = .enum Le/k/a/a/k$c;->a:Le/k/a/a/k$c;
        timezone = "##default"
        with = {}
        without = {}
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/k/a/a/k$d;,
        Le/k/a/a/k$b;,
        Le/k/a/a/k$a;,
        Le/k/a/a/k$c;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract lenient()Le/k/a/a/o0;
.end method

.method public abstract locale()Ljava/lang/String;
.end method

.method public abstract pattern()Ljava/lang/String;
.end method

.method public abstract shape()Le/k/a/a/k$c;
.end method

.method public abstract timezone()Ljava/lang/String;
.end method

.method public abstract with()[Le/k/a/a/k$a;
.end method

.method public abstract without()[Le/k/a/a/k$a;
.end method
